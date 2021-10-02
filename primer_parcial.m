% Initialize the detector
faceDetector = vision.CascadeObjectDetector;
shapeInserter = vision.ShapeInserter('BorderColor','Custom','CustomBorderColor',[0 255 0]);
cont = 0;
cont_sharp=0;

% disp('Leyendo fotos....');
% imagefiles = dir('images\*.jpg');      
% nfiles = length(imagefiles);    % Number of files found
% disp('Procesando imagenes...');
% disp('Detectando rostros...');
% for ii=1:nfiles
%     currentfilename = imagefiles(ii).name;
%     I = imread(['images\' currentfilename]);
%     bbox = step(faceDetector, I);
%     % Draw boxes around detected faces and display results
%     I_faces = step(shapeInserter, I, int32(bbox));
%     figure;imshow(I_faces), title('Detected faces');
%     % Cropping individual faces
%     for i=1:size(bbox,1)
%         cont = cont +1;
%         face = imresize(imcrop(I,bbox(i,:)),[150 150]);
%         figure;imshow(face,[]), title('ZOOM in detected face');
%     end
% end
% 
% prompt = 'Desea ver el resultado post procesamiento? ingrese 1. ';
% x = input(prompt);
% if x==1
%     disp('Procesando imagenes modificadas...');
%     disp('Detectando rostros en imagenes procesadas...');
%     for ii=1:nfiles
%         currentfilename = imagefiles(ii).name;
%         I = imread(['images\' currentfilename]);
%         I = imsharpen(I,'Radius',3,'Amount',2);
%         bbox = step(faceDetector, I);
%         % Draw boxes around detected faces and display results
%         I_faces = step(shapeInserter, I, int32(bbox));
%         figure;imshow(I_faces), title('Detected faces sharpened');
%         % Cropping individual faces
%         for i=1:size(bbox,1)
%             cont_sharp = cont_sharp +1;
%             face = imresize(imcrop(I,bbox(i,:)),[150 150]);
%             figure;imshow(face,[]), title('ZOOM in detected face sharpened');
%         end
%     end
% end
% disp('Cantidad de rostros detectados en las imagenes');
% disp(cont);
% disp('Cantidad de rostros detectados en las imagenes procesadas');
% disp(cont_sharp);


%experimiento anteojos
% disp('Leyendo fotos....');
% imagefiles = dir('glasses\*.jpg');      
% nfiles = length(imagefiles);    % Number of files found
% disp('Procesando imagenes...');
% disp('Detectando rostros...');
% for ii=1:nfiles
%     currentfilename = imagefiles(ii).name;
%     I = imread(['glasses\' currentfilename]);
%     bbox = step(faceDetector, I);
%     % Draw boxes around detected faces and display results
%     I_faces = step(shapeInserter, I, int32(bbox));
%     figure;imshow(I_faces), title('Detected faces');
%     % Cropping individual faces
%     for i=1:size(bbox,1)
%         cont = cont +1;
%         face = imresize(imcrop(I,bbox(i,:)),[150 150]);
%         figure;imshow(face,[]), title('ZOOM in detected face');
%     end
% end
% 
% prompt = 'Desea ver el resultado post procesamiento? ingrese 1. ';
% x = input(prompt);
% if x==1
%     disp('Procesando imagenes modificadas...');
%     disp('Detectando rostros en imagenes procesadas...');
%     for ii=1:nfiles
%         currentfilename = imagefiles(ii).name;
%         I = imread(['glasses\' currentfilename]);
%         I = imsharpen(I,'Radius',3,'Amount',2);
%         bbox = step(faceDetector, I);
%         % Draw boxes around detected faces and display results
%         I_faces = step(shapeInserter, I, int32(bbox));
%         figure;imshow(I_faces), title('Detected faces sharpened');
%         % Cropping individual faces
%         for i=1:size(bbox,1)
%             cont_sharp = cont_sharp +1;
%             face = imresize(imcrop(I,bbox(i,:)),[150 150]);
%             figure;imshow(face,[]), title('ZOOM in detected face sharpened');
%         end
%     end
% end
% 
% disp('Cantidad de rostros detectados en las imagenes con anteojos');
% disp(cont);
% disp('Cantidad de rostros detectados en las imagenes procesadas con anteojos');
% disp(cont_sharp);
% 
% experimiento mirada de costado
% disp('Leyendo fotos....');
imagefiles = dir('costado\*.jpg');      
nfiles = length(imagefiles);    % Number of files found
% disp('Procesando imagenes...');
% disp('Detectando rostros...');
% for ii=1:nfiles
%     currentfilename = imagefiles(ii).name;
%     I = imread(['costado\' currentfilename]);
%     bbox = step(faceDetector, I);
%     % Draw boxes around detected faces and display results
%     I_faces = step(shapeInserter, I, int32(bbox));
%     figure;imshow(I_faces), title('Detected faces');
%     % Cropping individual faces
%     for i=1:size(bbox,1)
%         cont = cont +1;
%         face = imresize(imcrop(I,bbox(i,:)),[150 150]);
%         figure;imshow(face,[]), title('ZOOM in detected face');
%     end
% end

prompt = 'Desea ver el resultado post procesamiento? ingrese 1. ';
x = input(prompt);
if x==1
    disp('Procesando imagenes modificadas...');
    disp('Detectando rostros en imagenes procesadas...');
    for ii=1:nfiles
        currentfilename = imagefiles(ii).name;
        I = imread(['costado\' currentfilename]);
        I = imsharpen(I,'Radius',3,'Amount',2);
        bbox = step(faceDetector, I);
        % Draw boxes around detected faces and display results
        I_faces = step(shapeInserter, I, int32(bbox));
        figure;imshow(I_faces), title('Detected faces sharpened');
        % Cropping individual faces
        for i=1:size(bbox,1)
            cont_sharp = cont_sharp +1;
            face = imresize(imcrop(I,bbox(i,:)),[150 150]);
            figure;imshow(face,[]), title('ZOOM in detected face sharpened');
        end
    end
end

disp('Cantidad de rostros detectados en las imagenes de costado');
disp(cont);
disp('Cantidad de rostros detectados en las imagenes procesadas de costado');
disp(cont_sharp);