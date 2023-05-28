import java.util.*;

class owner{
    int id, age;
    String firstname, middlename, lastname, gender;
    public owner(int id, String firstname, String middlename, String lastname, String gender, int age){
        this.id = id;
        this.age = age;
        this.firstname = firstname;
        this.middlename = middlename;
        this.lastname = lastname;
        this.gender = gender;
    }
}

class pet{
    String color, breed, birthdate, tag;
    int ownerid;
    public pet(int ownerid, String color, String breed, String birthdate, String tag){
        this.ownerid = ownerid;
        this.color = color;
        this.breed = breed;
        this.birthdate = birthdate;
        this.tag = tag;
    }
}

class vaccination{
    String tag, date, place, remarks;
    public vaccination(String tag, String date, String place, String remarks){
        this.tag = tag;
        this.date = date;
        this.place = place;
        this.remarks = remarks;
    }
}

class petregistration{
    static ArrayList<owner> owners = new ArrayList<owner>();
    static ArrayList<pet> pets = new ArrayList<pet>();
    static ArrayList<vaccination> vaccin = new ArrayList<vaccination>();

    static Scanner scan = new Scanner(System.in);

    static void displayOwner(){
        System.out.println("---------------------------------------------------------");
        System.out.println("|  id \t|  firstname \t|  middlename \t|  lastname \t|");
        System.out.println("---------------------------------------------------------");
        for(owner own : owners){
            System.out.println("|  "+own.id+" \t|  "+own.firstname+" \t|  "+own.middlename+" \t|  "+own.lastname+" \t|");
        }
        System.out.println("---------------------------------------------------------");
    }

    static void displayPet(){
        System.out.println("-----------------------------------------------------------------");
        System.out.println("|  owner \t\t|  color \t| breed \t|  tag \t|");
        System.out.println("-----------------------------------------------------------------");
        for(pet p : pets){
            owner own = owners.get(p.ownerid-1);
            System.out.println("| "+own.lastname+" "+own.firstname+" \t\t| "+p.color+" \t| "+p.breed+" \t| "+p.tag+" \t|");
        }
        System.out.println("-----------------------------------------------------------------");
    }

    static void addingOwner(){
        System.out.println("firstname: ");
        String firstname = scan.next();
        System.out.println("middlename: ");
        String middlename = scan.next();
        System.out.println("lastname: ");
        String lastname = scan.next();
        System.out.println("gender: ");
        String gender = scan.next();
        System.out.println("age: ");
        int age = scan.nextInt();
        owner own = new owner(owners.size()+1,firstname,middlename,lastname,gender,age);
        owners.add(own);
        System.out.println("\n\nDo you want to insert another owner? just type 1 if yes and 0 if no");
        int conti = scan.nextInt();
        System.out.println("\n\n");
        if(conti == 0){
            displayOwner();
            choices();
        }else{
            addingOwner();
        }
    }

    static void addingPet(){
        System.out.println("color: ");
        String color = scan.next();
        System.out.println("breed: ");
        String breed = scan.next();
        System.out.println("birthdate: ");
        String birthdate = scan.next();
        System.out.println("tag: ");
        String tag = scan.next();
        System.out.println("owner id: ");
        int id = scan.nextInt();
        pet p = new pet(id,color,breed,birthdate,tag);
        pets.add(p);
        System.out.println("\n\nDo you want to insert another pet? just type 1 if yes and 0 if no");
        int yes = scan.nextInt();
        System.out.println("\n\n");
        if(yes == 0){
            displayPet();
            choices();
        }else{
            addingPet();
        }
    }
    static void addingVaccine(){
        System.out.println("Enter the tag of pet");
        String tag = scan.next();
        System.out.println("Enter date");
        String date = scan.next();
        System.out.println("Enter place");
        String place = scan.next();
        System.out.println("Enter remarks");
        String remarks = scan.next();
        vaccination v = new vaccination(tag, date, place, remarks);
        vaccin.add(v);
        System.out.println("\n\nDo you want to insert another vaccine record? just type 1 if yes and 0 if no");
        int yes = scan.nextInt();
        System.out.println("\n\n");
        if(yes == 0){
            displayVaccine();
            choices();
        }else{
            addingPet();
        }
    }

    static void displayVaccine(){
        for(vaccination vac: vaccin){
            System.out.println("date : "+vac.date);
            System.out.println("place : "+vac.place);
            System.out.println("remarks : "+vac.remarks);
            for(pet p : pets){
                if(p.tag.equals(vac.tag)){
                    System.out.println("pet : "+p.breed);
                    owner own = owners.get(p.ownerid-1);
                    System.out.println("owner name : "+own.firstname+" "+own.lastname);
                }
            }
        }
    }

    static void choices(){
        if(owners.size() == 0){
            System.out.println("Just input the owner");
            addingOwner();
        }else if(pets.size() == 0){
            System.out.println("Just input the data of your pet");
            addingPet();
        }else{
            System.out.println("What you want? just type \n1 if you want to insert a new owner \n2 if you want to insert a new pet \n3 if you want to insert a vaccine data");
            int choose = scan.nextInt();
            switch(choose){
                case 1: addingOwner(); break;
                case 2: addingPet(); break;
                case 3: addingVaccine(); break;
                default: System.out.println("you are done!");
            }
        }
    }
    public static void main(String[] args){
        choices();
    }
}